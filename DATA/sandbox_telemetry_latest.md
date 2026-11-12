# sandbox_telemetry_parse — 2026-11-12 04:50:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1975278 lines=4373
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4364 |
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
| `chromeBrowserPssKb` | {'int': 4364} |
| `chromeGpuPssKb` | {'int': 4364} |
| `chromeOtherPssKb` | {'int': 4364} |
| `chromeProcesses` | {'int': 4364} |
| `chromeProfiles` | {'int': 4364} |
| `chromeRendererMaxPssKb` | {'int': 4364} |
| `chromeRendererPssKb` | {'int': 4364} |
| `chromeRenderers` | {'int': 4364} |
| `chromeTabs` | {'int': 4364} |
| `chromeTabsProbedProfiles` | {'int': 4364} |
| `chromeUtilityPssKb` | {'int': 4364} |
| `desktopPssKb` | {'int': 4364} |
| `hostPssKb` | {'int': 4364} |
| `kind` | {'str': 4364} |
| `memAvailableKb` | {'int': 4364} |
| `memTotalKb` | {'int': 4364} |
| `otherPssKb` | {'int': 4364} |
| `processes` | {'int': 4364} |
| `pssFallbackProcesses` | {'int': 4364} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
