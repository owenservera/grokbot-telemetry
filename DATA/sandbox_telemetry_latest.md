# sandbox_telemetry_parse — 2026-10-16 19:27:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=762028 lines=2848
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1886 |
| `memory_sample` | 953 |
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
| `chromeBrowserPssKb` | {'int': 953} |
| `chromeGpuPssKb` | {'int': 953} |
| `chromeOtherPssKb` | {'int': 953} |
| `chromeProcesses` | {'int': 953} |
| `chromeProfiles` | {'int': 953} |
| `chromeRendererMaxPssKb` | {'int': 953} |
| `chromeRendererPssKb` | {'int': 953} |
| `chromeRenderers` | {'int': 953} |
| `chromeTabs` | {'int': 953} |
| `chromeTabsProbedProfiles` | {'int': 953} |
| `chromeUtilityPssKb` | {'int': 953} |
| `desktopPssKb` | {'int': 953} |
| `hostPssKb` | {'int': 953} |
| `kind` | {'str': 953} |
| `memAvailableKb` | {'int': 953} |
| `memTotalKb` | {'int': 953} |
| `otherPssKb` | {'int': 953} |
| `processes` | {'int': 953} |
| `pssFallbackProcesses` | {'int': 953} |

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
| `cpuMillicores` | {'int': 1883} |
| `display` | {'int': 1886} |
| `kind` | {'str': 1886} |
| `processes` | {'int': 1886} |
| `pssKb` | {'int': 1886} |
| `rendererMaxPssKb` | {'int': 1886} |
| `renderers` | {'int': 1886} |
| `tabs` | {'int': 1885} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
