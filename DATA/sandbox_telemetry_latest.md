# sandbox_telemetry_parse — 2026-11-07 13:01:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=472011 lines=1051
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1042 |
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
| `chromeBrowserPssKb` | {'int': 1042} |
| `chromeGpuPssKb` | {'int': 1042} |
| `chromeOtherPssKb` | {'int': 1042} |
| `chromeProcesses` | {'int': 1042} |
| `chromeProfiles` | {'int': 1042} |
| `chromeRendererMaxPssKb` | {'int': 1042} |
| `chromeRendererPssKb` | {'int': 1042} |
| `chromeRenderers` | {'int': 1042} |
| `chromeTabs` | {'int': 1042} |
| `chromeTabsProbedProfiles` | {'int': 1042} |
| `chromeUtilityPssKb` | {'int': 1042} |
| `desktopPssKb` | {'int': 1042} |
| `hostPssKb` | {'int': 1042} |
| `kind` | {'str': 1042} |
| `memAvailableKb` | {'int': 1042} |
| `memTotalKb` | {'int': 1042} |
| `otherPssKb` | {'int': 1042} |
| `processes` | {'int': 1042} |
| `pssFallbackProcesses` | {'int': 1042} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
