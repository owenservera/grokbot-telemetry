# sandbox_telemetry_parse — 2026-10-16 02:52:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=14248 lines=52
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 22 |
| `memory_sample` | 21 |
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
| `chromeBrowserPssKb` | {'int': 21} |
| `chromeGpuPssKb` | {'int': 21} |
| `chromeOtherPssKb` | {'int': 21} |
| `chromeProcesses` | {'int': 21} |
| `chromeProfiles` | {'int': 21} |
| `chromeRendererMaxPssKb` | {'int': 21} |
| `chromeRendererPssKb` | {'int': 21} |
| `chromeRenderers` | {'int': 21} |
| `chromeTabs` | {'int': 21} |
| `chromeTabsProbedProfiles` | {'int': 21} |
| `chromeUtilityPssKb` | {'int': 21} |
| `desktopPssKb` | {'int': 21} |
| `hostPssKb` | {'int': 21} |
| `kind` | {'str': 21} |
| `memAvailableKb` | {'int': 21} |
| `memTotalKb` | {'int': 21} |
| `otherPssKb` | {'int': 21} |
| `processes` | {'int': 21} |
| `pssFallbackProcesses` | {'int': 21} |

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
| `cpuMillicores` | {'int': 19} |
| `display` | {'int': 22} |
| `kind` | {'str': 22} |
| `processes` | {'int': 22} |
| `pssKb` | {'int': 22} |
| `rendererMaxPssKb` | {'int': 22} |
| `renderers` | {'int': 22} |
| `tabs` | {'int': 21} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
