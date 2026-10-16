# sandbox_telemetry_parse — 2026-10-16 22:12:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=872050 lines=3259
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2160 |
| `memory_sample` | 1090 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1090} |
| `chromeGpuPssKb` | {'int': 1090} |
| `chromeOtherPssKb` | {'int': 1090} |
| `chromeProcesses` | {'int': 1090} |
| `chromeProfiles` | {'int': 1090} |
| `chromeRendererMaxPssKb` | {'int': 1090} |
| `chromeRendererPssKb` | {'int': 1090} |
| `chromeRenderers` | {'int': 1090} |
| `chromeTabs` | {'int': 1090} |
| `chromeTabsProbedProfiles` | {'int': 1090} |
| `chromeUtilityPssKb` | {'int': 1090} |
| `desktopPssKb` | {'int': 1090} |
| `hostPssKb` | {'int': 1090} |
| `kind` | {'str': 1090} |
| `memAvailableKb` | {'int': 1090} |
| `memTotalKb` | {'int': 1090} |
| `otherPssKb` | {'int': 1090} |
| `processes` | {'int': 1090} |
| `pssFallbackProcesses` | {'int': 1090} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 2157} |
| `display` | {'int': 2160} |
| `kind` | {'str': 2160} |
| `processes` | {'int': 2160} |
| `pssKb` | {'int': 2160} |
| `rendererMaxPssKb` | {'int': 2160} |
| `renderers` | {'int': 2160} |
| `tabs` | {'int': 2159} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
