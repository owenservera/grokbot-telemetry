# sandbox_telemetry_parse — 2026-10-13 09:21:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=978946 lines=2435
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1983 |
| `chrome_profile_sample` | 444 |
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
| `chromeBrowserPssKb` | {'int': 1983} |
| `chromeGpuPssKb` | {'int': 1983} |
| `chromeOtherPssKb` | {'int': 1983} |
| `chromeProcesses` | {'int': 1983} |
| `chromeProfiles` | {'int': 1983} |
| `chromeRendererMaxPssKb` | {'int': 1983} |
| `chromeRendererPssKb` | {'int': 1983} |
| `chromeRenderers` | {'int': 1983} |
| `chromeTabs` | {'int': 1983} |
| `chromeTabsProbedProfiles` | {'int': 1983} |
| `chromeUtilityPssKb` | {'int': 1983} |
| `desktopPssKb` | {'int': 1983} |
| `hostPssKb` | {'int': 1983} |
| `kind` | {'str': 1983} |
| `memAvailableKb` | {'int': 1983} |
| `memTotalKb` | {'int': 1983} |
| `otherPssKb` | {'int': 1983} |
| `processes` | {'int': 1983} |
| `pssFallbackProcesses` | {'int': 1983} |

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
| `cpuMillicores` | {'int': 443} |
| `display` | {'int': 444} |
| `kind` | {'str': 444} |
| `processes` | {'int': 444} |
| `pssKb` | {'int': 444} |
| `rendererMaxPssKb` | {'int': 444} |
| `renderers` | {'int': 444} |
| `tabs` | {'int': 444} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
