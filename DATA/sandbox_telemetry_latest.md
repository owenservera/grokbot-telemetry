# sandbox_telemetry_parse — 2026-11-10 02:50:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=959358 lines=2128
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2119 |
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
| `chromeBrowserPssKb` | {'int': 2119} |
| `chromeGpuPssKb` | {'int': 2119} |
| `chromeOtherPssKb` | {'int': 2119} |
| `chromeProcesses` | {'int': 2119} |
| `chromeProfiles` | {'int': 2119} |
| `chromeRendererMaxPssKb` | {'int': 2119} |
| `chromeRendererPssKb` | {'int': 2119} |
| `chromeRenderers` | {'int': 2119} |
| `chromeTabs` | {'int': 2119} |
| `chromeTabsProbedProfiles` | {'int': 2119} |
| `chromeUtilityPssKb` | {'int': 2119} |
| `desktopPssKb` | {'int': 2119} |
| `hostPssKb` | {'int': 2119} |
| `kind` | {'str': 2119} |
| `memAvailableKb` | {'int': 2119} |
| `memTotalKb` | {'int': 2119} |
| `otherPssKb` | {'int': 2119} |
| `processes` | {'int': 2119} |
| `pssFallbackProcesses` | {'int': 2119} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
