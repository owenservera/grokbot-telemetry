# sandbox_telemetry_parse — 2026-11-07 10:32:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=420000 lines=936
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 927 |
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
| `chromeBrowserPssKb` | {'int': 927} |
| `chromeGpuPssKb` | {'int': 927} |
| `chromeOtherPssKb` | {'int': 927} |
| `chromeProcesses` | {'int': 927} |
| `chromeProfiles` | {'int': 927} |
| `chromeRendererMaxPssKb` | {'int': 927} |
| `chromeRendererPssKb` | {'int': 927} |
| `chromeRenderers` | {'int': 927} |
| `chromeTabs` | {'int': 927} |
| `chromeTabsProbedProfiles` | {'int': 927} |
| `chromeUtilityPssKb` | {'int': 927} |
| `desktopPssKb` | {'int': 927} |
| `hostPssKb` | {'int': 927} |
| `kind` | {'str': 927} |
| `memAvailableKb` | {'int': 927} |
| `memTotalKb` | {'int': 927} |
| `otherPssKb` | {'int': 927} |
| `processes` | {'int': 927} |
| `pssFallbackProcesses` | {'int': 927} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
