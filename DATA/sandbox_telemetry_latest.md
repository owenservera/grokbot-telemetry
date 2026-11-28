# sandbox_telemetry_parse — 2026-11-28 09:07:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=817691 lines=1814
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1806 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 1806} |
| `chromeGpuPssKb` | {'int': 1806} |
| `chromeOtherPssKb` | {'int': 1806} |
| `chromeProcesses` | {'int': 1806} |
| `chromeProfiles` | {'int': 1806} |
| `chromeRendererMaxPssKb` | {'int': 1806} |
| `chromeRendererPssKb` | {'int': 1806} |
| `chromeRenderers` | {'int': 1806} |
| `chromeTabs` | {'int': 1806} |
| `chromeTabsProbedProfiles` | {'int': 1806} |
| `chromeUtilityPssKb` | {'int': 1806} |
| `desktopPssKb` | {'int': 1806} |
| `hostPssKb` | {'int': 1806} |
| `kind` | {'str': 1806} |
| `memAvailableKb` | {'int': 1806} |
| `memTotalKb` | {'int': 1806} |
| `otherPssKb` | {'int': 1806} |
| `processes` | {'int': 1806} |
| `pssFallbackProcesses` | {'int': 1806} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
