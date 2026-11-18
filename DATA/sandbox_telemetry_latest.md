# sandbox_telemetry_parse — 2026-11-18 08:14:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=742114 lines=1647
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1640 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1640} |
| `chromeGpuPssKb` | {'int': 1640} |
| `chromeOtherPssKb` | {'int': 1640} |
| `chromeProcesses` | {'int': 1640} |
| `chromeProfiles` | {'int': 1640} |
| `chromeRendererMaxPssKb` | {'int': 1640} |
| `chromeRendererPssKb` | {'int': 1640} |
| `chromeRenderers` | {'int': 1640} |
| `chromeTabs` | {'int': 1640} |
| `chromeTabsProbedProfiles` | {'int': 1640} |
| `chromeUtilityPssKb` | {'int': 1640} |
| `desktopPssKb` | {'int': 1640} |
| `hostPssKb` | {'int': 1640} |
| `kind` | {'str': 1640} |
| `memAvailableKb` | {'int': 1640} |
| `memTotalKb` | {'int': 1640} |
| `otherPssKb` | {'int': 1640} |
| `processes` | {'int': 1640} |
| `pssFallbackProcesses` | {'int': 1640} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
