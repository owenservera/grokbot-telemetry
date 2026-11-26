# sandbox_telemetry_parse — 2026-11-26 05:33:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3097079 lines=6860
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6845 |
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
| `chromeBrowserPssKb` | {'int': 6845} |
| `chromeGpuPssKb` | {'int': 6845} |
| `chromeOtherPssKb` | {'int': 6845} |
| `chromeProcesses` | {'int': 6845} |
| `chromeProfiles` | {'int': 6845} |
| `chromeRendererMaxPssKb` | {'int': 6845} |
| `chromeRendererPssKb` | {'int': 6845} |
| `chromeRenderers` | {'int': 6845} |
| `chromeTabs` | {'int': 6845} |
| `chromeTabsProbedProfiles` | {'int': 6845} |
| `chromeUtilityPssKb` | {'int': 6845} |
| `desktopPssKb` | {'int': 6845} |
| `hostPssKb` | {'int': 6845} |
| `kind` | {'str': 6845} |
| `memAvailableKb` | {'int': 6845} |
| `memTotalKb` | {'int': 6845} |
| `otherPssKb` | {'int': 6845} |
| `processes` | {'int': 6845} |
| `pssFallbackProcesses` | {'int': 6845} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
