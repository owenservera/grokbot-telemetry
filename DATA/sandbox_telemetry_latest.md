# sandbox_telemetry_parse — 2026-11-07 08:57:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=385155 lines=859
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 850 |
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
| `chromeBrowserPssKb` | {'int': 850} |
| `chromeGpuPssKb` | {'int': 850} |
| `chromeOtherPssKb` | {'int': 850} |
| `chromeProcesses` | {'int': 850} |
| `chromeProfiles` | {'int': 850} |
| `chromeRendererMaxPssKb` | {'int': 850} |
| `chromeRendererPssKb` | {'int': 850} |
| `chromeRenderers` | {'int': 850} |
| `chromeTabs` | {'int': 850} |
| `chromeTabsProbedProfiles` | {'int': 850} |
| `chromeUtilityPssKb` | {'int': 850} |
| `desktopPssKb` | {'int': 850} |
| `hostPssKb` | {'int': 850} |
| `kind` | {'str': 850} |
| `memAvailableKb` | {'int': 850} |
| `memTotalKb` | {'int': 850} |
| `otherPssKb` | {'int': 850} |
| `processes` | {'int': 850} |
| `pssFallbackProcesses` | {'int': 850} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
