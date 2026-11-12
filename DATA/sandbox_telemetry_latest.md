# sandbox_telemetry_parse — 2026-11-12 16:36:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2224657 lines=4924
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4915 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4915} |
| `chromeGpuPssKb` | {'int': 4915} |
| `chromeOtherPssKb` | {'int': 4915} |
| `chromeProcesses` | {'int': 4915} |
| `chromeProfiles` | {'int': 4915} |
| `chromeRendererMaxPssKb` | {'int': 4915} |
| `chromeRendererPssKb` | {'int': 4915} |
| `chromeRenderers` | {'int': 4915} |
| `chromeTabs` | {'int': 4915} |
| `chromeTabsProbedProfiles` | {'int': 4915} |
| `chromeUtilityPssKb` | {'int': 4915} |
| `desktopPssKb` | {'int': 4915} |
| `hostPssKb` | {'int': 4915} |
| `kind` | {'str': 4915} |
| `memAvailableKb` | {'int': 4915} |
| `memTotalKb` | {'int': 4915} |
| `otherPssKb` | {'int': 4915} |
| `processes` | {'int': 4915} |
| `pssFallbackProcesses` | {'int': 4915} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
