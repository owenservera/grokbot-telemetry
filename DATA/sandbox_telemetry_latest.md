# sandbox_telemetry_parse — 2026-11-11 14:13:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1667038 lines=3692
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3683 |
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
| `chromeBrowserPssKb` | {'int': 3683} |
| `chromeGpuPssKb` | {'int': 3683} |
| `chromeOtherPssKb` | {'int': 3683} |
| `chromeProcesses` | {'int': 3683} |
| `chromeProfiles` | {'int': 3683} |
| `chromeRendererMaxPssKb` | {'int': 3683} |
| `chromeRendererPssKb` | {'int': 3683} |
| `chromeRenderers` | {'int': 3683} |
| `chromeTabs` | {'int': 3683} |
| `chromeTabsProbedProfiles` | {'int': 3683} |
| `chromeUtilityPssKb` | {'int': 3683} |
| `desktopPssKb` | {'int': 3683} |
| `hostPssKb` | {'int': 3683} |
| `kind` | {'str': 3683} |
| `memAvailableKb` | {'int': 3683} |
| `memTotalKb` | {'int': 3683} |
| `otherPssKb` | {'int': 3683} |
| `processes` | {'int': 3683} |
| `pssFallbackProcesses` | {'int': 3683} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
