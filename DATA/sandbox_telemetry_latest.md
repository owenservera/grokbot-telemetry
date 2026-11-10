# sandbox_telemetry_parse — 2026-11-10 02:48:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=958454 lines=2126
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2117 |
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
| `chromeBrowserPssKb` | {'int': 2117} |
| `chromeGpuPssKb` | {'int': 2117} |
| `chromeOtherPssKb` | {'int': 2117} |
| `chromeProcesses` | {'int': 2117} |
| `chromeProfiles` | {'int': 2117} |
| `chromeRendererMaxPssKb` | {'int': 2117} |
| `chromeRendererPssKb` | {'int': 2117} |
| `chromeRenderers` | {'int': 2117} |
| `chromeTabs` | {'int': 2117} |
| `chromeTabsProbedProfiles` | {'int': 2117} |
| `chromeUtilityPssKb` | {'int': 2117} |
| `desktopPssKb` | {'int': 2117} |
| `hostPssKb` | {'int': 2117} |
| `kind` | {'str': 2117} |
| `memAvailableKb` | {'int': 2117} |
| `memTotalKb` | {'int': 2117} |
| `otherPssKb` | {'int': 2117} |
| `processes` | {'int': 2117} |
| `pssFallbackProcesses` | {'int': 2117} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
