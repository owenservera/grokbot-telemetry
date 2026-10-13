# sandbox_telemetry_parse — 2026-10-14 00:06:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1315874 lines=3491
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2511 |
| `chrome_profile_sample` | 972 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2511} |
| `chromeGpuPssKb` | {'int': 2511} |
| `chromeOtherPssKb` | {'int': 2511} |
| `chromeProcesses` | {'int': 2511} |
| `chromeProfiles` | {'int': 2511} |
| `chromeRendererMaxPssKb` | {'int': 2511} |
| `chromeRendererPssKb` | {'int': 2511} |
| `chromeRenderers` | {'int': 2511} |
| `chromeTabs` | {'int': 2511} |
| `chromeTabsProbedProfiles` | {'int': 2511} |
| `chromeUtilityPssKb` | {'int': 2511} |
| `desktopPssKb` | {'int': 2511} |
| `hostPssKb` | {'int': 2511} |
| `kind` | {'str': 2511} |
| `memAvailableKb` | {'int': 2511} |
| `memTotalKb` | {'int': 2511} |
| `otherPssKb` | {'int': 2511} |
| `processes` | {'int': 2511} |
| `pssFallbackProcesses` | {'int': 2511} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 971} |
| `display` | {'int': 972} |
| `kind` | {'str': 972} |
| `processes` | {'int': 972} |
| `pssKb` | {'int': 972} |
| `rendererMaxPssKb` | {'int': 972} |
| `renderers` | {'int': 972} |
| `tabs` | {'int': 972} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
