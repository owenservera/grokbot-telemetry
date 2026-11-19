# sandbox_telemetry_parse — 2026-11-19 13:58:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1300355 lines=2883
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2874 |
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
| `chromeBrowserPssKb` | {'int': 2874} |
| `chromeGpuPssKb` | {'int': 2874} |
| `chromeOtherPssKb` | {'int': 2874} |
| `chromeProcesses` | {'int': 2874} |
| `chromeProfiles` | {'int': 2874} |
| `chromeRendererMaxPssKb` | {'int': 2874} |
| `chromeRendererPssKb` | {'int': 2874} |
| `chromeRenderers` | {'int': 2874} |
| `chromeTabs` | {'int': 2874} |
| `chromeTabsProbedProfiles` | {'int': 2874} |
| `chromeUtilityPssKb` | {'int': 2874} |
| `desktopPssKb` | {'int': 2874} |
| `hostPssKb` | {'int': 2874} |
| `kind` | {'str': 2874} |
| `memAvailableKb` | {'int': 2874} |
| `memTotalKb` | {'int': 2874} |
| `otherPssKb` | {'int': 2874} |
| `processes` | {'int': 2874} |
| `pssFallbackProcesses` | {'int': 2874} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
