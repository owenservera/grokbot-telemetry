# sandbox_telemetry_parse — 2026-11-10 19:36:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1288394 lines=2855
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2846 |
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
| `chromeBrowserPssKb` | {'int': 2846} |
| `chromeGpuPssKb` | {'int': 2846} |
| `chromeOtherPssKb` | {'int': 2846} |
| `chromeProcesses` | {'int': 2846} |
| `chromeProfiles` | {'int': 2846} |
| `chromeRendererMaxPssKb` | {'int': 2846} |
| `chromeRendererPssKb` | {'int': 2846} |
| `chromeRenderers` | {'int': 2846} |
| `chromeTabs` | {'int': 2846} |
| `chromeTabsProbedProfiles` | {'int': 2846} |
| `chromeUtilityPssKb` | {'int': 2846} |
| `desktopPssKb` | {'int': 2846} |
| `hostPssKb` | {'int': 2846} |
| `kind` | {'str': 2846} |
| `memAvailableKb` | {'int': 2846} |
| `memTotalKb` | {'int': 2846} |
| `otherPssKb` | {'int': 2846} |
| `processes` | {'int': 2846} |
| `pssFallbackProcesses` | {'int': 2846} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
