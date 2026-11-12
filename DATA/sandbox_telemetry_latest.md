# sandbox_telemetry_parse — 2026-11-12 09:47:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2069371 lines=4581
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4572 |
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
| `chromeBrowserPssKb` | {'int': 4572} |
| `chromeGpuPssKb` | {'int': 4572} |
| `chromeOtherPssKb` | {'int': 4572} |
| `chromeProcesses` | {'int': 4572} |
| `chromeProfiles` | {'int': 4572} |
| `chromeRendererMaxPssKb` | {'int': 4572} |
| `chromeRendererPssKb` | {'int': 4572} |
| `chromeRenderers` | {'int': 4572} |
| `chromeTabs` | {'int': 4572} |
| `chromeTabsProbedProfiles` | {'int': 4572} |
| `chromeUtilityPssKb` | {'int': 4572} |
| `desktopPssKb` | {'int': 4572} |
| `hostPssKb` | {'int': 4572} |
| `kind` | {'str': 4572} |
| `memAvailableKb` | {'int': 4572} |
| `memTotalKb` | {'int': 4572} |
| `otherPssKb` | {'int': 4572} |
| `processes` | {'int': 4572} |
| `pssFallbackProcesses` | {'int': 4572} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
