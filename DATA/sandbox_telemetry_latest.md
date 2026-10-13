# sandbox_telemetry_parse — 2026-10-13 16:47:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1160717 lines=3005
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2268 |
| `chrome_profile_sample` | 729 |
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
| `chromeBrowserPssKb` | {'int': 2268} |
| `chromeGpuPssKb` | {'int': 2268} |
| `chromeOtherPssKb` | {'int': 2268} |
| `chromeProcesses` | {'int': 2268} |
| `chromeProfiles` | {'int': 2268} |
| `chromeRendererMaxPssKb` | {'int': 2268} |
| `chromeRendererPssKb` | {'int': 2268} |
| `chromeRenderers` | {'int': 2268} |
| `chromeTabs` | {'int': 2268} |
| `chromeTabsProbedProfiles` | {'int': 2268} |
| `chromeUtilityPssKb` | {'int': 2268} |
| `desktopPssKb` | {'int': 2268} |
| `hostPssKb` | {'int': 2268} |
| `kind` | {'str': 2268} |
| `memAvailableKb` | {'int': 2268} |
| `memTotalKb` | {'int': 2268} |
| `otherPssKb` | {'int': 2268} |
| `processes` | {'int': 2268} |
| `pssFallbackProcesses` | {'int': 2268} |

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
| `cpuMillicores` | {'int': 728} |
| `display` | {'int': 729} |
| `kind` | {'str': 729} |
| `processes` | {'int': 729} |
| `pssKb` | {'int': 729} |
| `rendererMaxPssKb` | {'int': 729} |
| `renderers` | {'int': 729} |
| `tabs` | {'int': 729} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
