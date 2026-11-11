# sandbox_telemetry_parse — 2026-11-12 00:16:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1885185 lines=4174
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4165 |
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
| `chromeBrowserPssKb` | {'int': 4165} |
| `chromeGpuPssKb` | {'int': 4165} |
| `chromeOtherPssKb` | {'int': 4165} |
| `chromeProcesses` | {'int': 4165} |
| `chromeProfiles` | {'int': 4165} |
| `chromeRendererMaxPssKb` | {'int': 4165} |
| `chromeRendererPssKb` | {'int': 4165} |
| `chromeRenderers` | {'int': 4165} |
| `chromeTabs` | {'int': 4165} |
| `chromeTabsProbedProfiles` | {'int': 4165} |
| `chromeUtilityPssKb` | {'int': 4165} |
| `desktopPssKb` | {'int': 4165} |
| `hostPssKb` | {'int': 4165} |
| `kind` | {'str': 4165} |
| `memAvailableKb` | {'int': 4165} |
| `memTotalKb` | {'int': 4165} |
| `otherPssKb` | {'int': 4165} |
| `processes` | {'int': 4165} |
| `pssFallbackProcesses` | {'int': 4165} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
