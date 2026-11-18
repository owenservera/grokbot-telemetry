# sandbox_telemetry_parse — 2026-11-18 18:47:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=932704 lines=2070
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2061 |
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
| `chromeBrowserPssKb` | {'int': 2061} |
| `chromeGpuPssKb` | {'int': 2061} |
| `chromeOtherPssKb` | {'int': 2061} |
| `chromeProcesses` | {'int': 2061} |
| `chromeProfiles` | {'int': 2061} |
| `chromeRendererMaxPssKb` | {'int': 2061} |
| `chromeRendererPssKb` | {'int': 2061} |
| `chromeRenderers` | {'int': 2061} |
| `chromeTabs` | {'int': 2061} |
| `chromeTabsProbedProfiles` | {'int': 2061} |
| `chromeUtilityPssKb` | {'int': 2061} |
| `desktopPssKb` | {'int': 2061} |
| `hostPssKb` | {'int': 2061} |
| `kind` | {'str': 2061} |
| `memAvailableKb` | {'int': 2061} |
| `memTotalKb` | {'int': 2061} |
| `otherPssKb` | {'int': 2061} |
| `processes` | {'int': 2061} |
| `pssFallbackProcesses` | {'int': 2061} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
