# sandbox_telemetry_parse — 2026-10-13 06:52:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=899403 lines=2185
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1858 |
| `chrome_profile_sample` | 319 |
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
| `chromeBrowserPssKb` | {'int': 1858} |
| `chromeGpuPssKb` | {'int': 1858} |
| `chromeOtherPssKb` | {'int': 1858} |
| `chromeProcesses` | {'int': 1858} |
| `chromeProfiles` | {'int': 1858} |
| `chromeRendererMaxPssKb` | {'int': 1858} |
| `chromeRendererPssKb` | {'int': 1858} |
| `chromeRenderers` | {'int': 1858} |
| `chromeTabs` | {'int': 1858} |
| `chromeTabsProbedProfiles` | {'int': 1858} |
| `chromeUtilityPssKb` | {'int': 1858} |
| `desktopPssKb` | {'int': 1858} |
| `hostPssKb` | {'int': 1858} |
| `kind` | {'str': 1858} |
| `memAvailableKb` | {'int': 1858} |
| `memTotalKb` | {'int': 1858} |
| `otherPssKb` | {'int': 1858} |
| `processes` | {'int': 1858} |
| `pssFallbackProcesses` | {'int': 1858} |

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
| `cpuMillicores` | {'int': 318} |
| `display` | {'int': 319} |
| `kind` | {'str': 319} |
| `processes` | {'int': 319} |
| `pssKb` | {'int': 319} |
| `rendererMaxPssKb` | {'int': 319} |
| `renderers` | {'int': 319} |
| `tabs` | {'int': 319} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
