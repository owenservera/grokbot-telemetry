# sandbox_telemetry_parse — 2026-11-12 10:38:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2087475 lines=4621
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4612 |
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
| `chromeBrowserPssKb` | {'int': 4612} |
| `chromeGpuPssKb` | {'int': 4612} |
| `chromeOtherPssKb` | {'int': 4612} |
| `chromeProcesses` | {'int': 4612} |
| `chromeProfiles` | {'int': 4612} |
| `chromeRendererMaxPssKb` | {'int': 4612} |
| `chromeRendererPssKb` | {'int': 4612} |
| `chromeRenderers` | {'int': 4612} |
| `chromeTabs` | {'int': 4612} |
| `chromeTabsProbedProfiles` | {'int': 4612} |
| `chromeUtilityPssKb` | {'int': 4612} |
| `desktopPssKb` | {'int': 4612} |
| `hostPssKb` | {'int': 4612} |
| `kind` | {'str': 4612} |
| `memAvailableKb` | {'int': 4612} |
| `memTotalKb` | {'int': 4612} |
| `otherPssKb` | {'int': 4612} |
| `processes` | {'int': 4612} |
| `pssFallbackProcesses` | {'int': 4612} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
