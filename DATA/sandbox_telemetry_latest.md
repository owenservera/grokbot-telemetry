# sandbox_telemetry_parse — 2026-11-25 08:22:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2669691 lines=5915
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5900 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5900} |
| `chromeGpuPssKb` | {'int': 5900} |
| `chromeOtherPssKb` | {'int': 5900} |
| `chromeProcesses` | {'int': 5900} |
| `chromeProfiles` | {'int': 5900} |
| `chromeRendererMaxPssKb` | {'int': 5900} |
| `chromeRendererPssKb` | {'int': 5900} |
| `chromeRenderers` | {'int': 5900} |
| `chromeTabs` | {'int': 5900} |
| `chromeTabsProbedProfiles` | {'int': 5900} |
| `chromeUtilityPssKb` | {'int': 5900} |
| `desktopPssKb` | {'int': 5900} |
| `hostPssKb` | {'int': 5900} |
| `kind` | {'str': 5900} |
| `memAvailableKb` | {'int': 5900} |
| `memTotalKb` | {'int': 5900} |
| `otherPssKb` | {'int': 5900} |
| `processes` | {'int': 5900} |
| `pssFallbackProcesses` | {'int': 5900} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
