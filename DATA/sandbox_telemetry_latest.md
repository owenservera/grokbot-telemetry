# sandbox_telemetry_parse — 2026-10-13 10:13:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1004403 lines=2515
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2023 |
| `chrome_profile_sample` | 484 |
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
| `chromeBrowserPssKb` | {'int': 2023} |
| `chromeGpuPssKb` | {'int': 2023} |
| `chromeOtherPssKb` | {'int': 2023} |
| `chromeProcesses` | {'int': 2023} |
| `chromeProfiles` | {'int': 2023} |
| `chromeRendererMaxPssKb` | {'int': 2023} |
| `chromeRendererPssKb` | {'int': 2023} |
| `chromeRenderers` | {'int': 2023} |
| `chromeTabs` | {'int': 2023} |
| `chromeTabsProbedProfiles` | {'int': 2023} |
| `chromeUtilityPssKb` | {'int': 2023} |
| `desktopPssKb` | {'int': 2023} |
| `hostPssKb` | {'int': 2023} |
| `kind` | {'str': 2023} |
| `memAvailableKb` | {'int': 2023} |
| `memTotalKb` | {'int': 2023} |
| `otherPssKb` | {'int': 2023} |
| `processes` | {'int': 2023} |
| `pssFallbackProcesses` | {'int': 2023} |

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
| `cpuMillicores` | {'int': 483} |
| `display` | {'int': 484} |
| `kind` | {'str': 484} |
| `processes` | {'int': 484} |
| `pssKb` | {'int': 484} |
| `rendererMaxPssKb` | {'int': 484} |
| `renderers` | {'int': 484} |
| `tabs` | {'int': 484} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
