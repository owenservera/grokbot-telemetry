# sandbox_telemetry_parse — 2026-11-12 12:01:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2119585 lines=4692
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4683 |
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
| `chromeBrowserPssKb` | {'int': 4683} |
| `chromeGpuPssKb` | {'int': 4683} |
| `chromeOtherPssKb` | {'int': 4683} |
| `chromeProcesses` | {'int': 4683} |
| `chromeProfiles` | {'int': 4683} |
| `chromeRendererMaxPssKb` | {'int': 4683} |
| `chromeRendererPssKb` | {'int': 4683} |
| `chromeRenderers` | {'int': 4683} |
| `chromeTabs` | {'int': 4683} |
| `chromeTabsProbedProfiles` | {'int': 4683} |
| `chromeUtilityPssKb` | {'int': 4683} |
| `desktopPssKb` | {'int': 4683} |
| `hostPssKb` | {'int': 4683} |
| `kind` | {'str': 4683} |
| `memAvailableKb` | {'int': 4683} |
| `memTotalKb` | {'int': 4683} |
| `otherPssKb` | {'int': 4683} |
| `processes` | {'int': 4683} |
| `pssFallbackProcesses` | {'int': 4683} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
