# sandbox_telemetry_parse — 2026-11-09 20:44:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=831788 lines=1846
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1837 |
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
| `chromeBrowserPssKb` | {'int': 1837} |
| `chromeGpuPssKb` | {'int': 1837} |
| `chromeOtherPssKb` | {'int': 1837} |
| `chromeProcesses` | {'int': 1837} |
| `chromeProfiles` | {'int': 1837} |
| `chromeRendererMaxPssKb` | {'int': 1837} |
| `chromeRendererPssKb` | {'int': 1837} |
| `chromeRenderers` | {'int': 1837} |
| `chromeTabs` | {'int': 1837} |
| `chromeTabsProbedProfiles` | {'int': 1837} |
| `chromeUtilityPssKb` | {'int': 1837} |
| `desktopPssKb` | {'int': 1837} |
| `hostPssKb` | {'int': 1837} |
| `kind` | {'str': 1837} |
| `memAvailableKb` | {'int': 1837} |
| `memTotalKb` | {'int': 1837} |
| `otherPssKb` | {'int': 1837} |
| `processes` | {'int': 1837} |
| `pssFallbackProcesses` | {'int': 1837} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
