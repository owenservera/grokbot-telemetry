# sandbox_telemetry_parse — 2026-10-27 08:05:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=406852 lines=903
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 898 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 898} |
| `chromeGpuPssKb` | {'int': 898} |
| `chromeOtherPssKb` | {'int': 898} |
| `chromeProcesses` | {'int': 898} |
| `chromeProfiles` | {'int': 898} |
| `chromeRendererMaxPssKb` | {'int': 898} |
| `chromeRendererPssKb` | {'int': 898} |
| `chromeRenderers` | {'int': 898} |
| `chromeTabs` | {'int': 898} |
| `chromeTabsProbedProfiles` | {'int': 898} |
| `chromeUtilityPssKb` | {'int': 898} |
| `desktopPssKb` | {'int': 898} |
| `hostPssKb` | {'int': 898} |
| `kind` | {'str': 898} |
| `memAvailableKb` | {'int': 898} |
| `memTotalKb` | {'int': 898} |
| `otherPssKb` | {'int': 898} |
| `processes` | {'int': 898} |
| `pssFallbackProcesses` | {'int': 898} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
