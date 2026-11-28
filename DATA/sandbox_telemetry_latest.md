# sandbox_telemetry_parse — 2026-11-28 12:09:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=879221 lines=1950
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1942 |
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
| `chromeBrowserPssKb` | {'int': 1942} |
| `chromeGpuPssKb` | {'int': 1942} |
| `chromeOtherPssKb` | {'int': 1942} |
| `chromeProcesses` | {'int': 1942} |
| `chromeProfiles` | {'int': 1942} |
| `chromeRendererMaxPssKb` | {'int': 1942} |
| `chromeRendererPssKb` | {'int': 1942} |
| `chromeRenderers` | {'int': 1942} |
| `chromeTabs` | {'int': 1942} |
| `chromeTabsProbedProfiles` | {'int': 1942} |
| `chromeUtilityPssKb` | {'int': 1942} |
| `desktopPssKb` | {'int': 1942} |
| `hostPssKb` | {'int': 1942} |
| `kind` | {'str': 1942} |
| `memAvailableKb` | {'int': 1942} |
| `memTotalKb` | {'int': 1942} |
| `otherPssKb` | {'int': 1942} |
| `processes` | {'int': 1942} |
| `pssFallbackProcesses` | {'int': 1942} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
