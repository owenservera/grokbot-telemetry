# sandbox_telemetry_parse — 2026-10-26 17:46:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=52929 lines=121
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 116 |
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
| `chromeBrowserPssKb` | {'int': 116} |
| `chromeGpuPssKb` | {'int': 116} |
| `chromeOtherPssKb` | {'int': 116} |
| `chromeProcesses` | {'int': 116} |
| `chromeProfiles` | {'int': 116} |
| `chromeRendererMaxPssKb` | {'int': 116} |
| `chromeRendererPssKb` | {'int': 116} |
| `chromeRenderers` | {'int': 116} |
| `chromeTabs` | {'int': 116} |
| `chromeTabsProbedProfiles` | {'int': 116} |
| `chromeUtilityPssKb` | {'int': 116} |
| `desktopPssKb` | {'int': 116} |
| `hostPssKb` | {'int': 116} |
| `kind` | {'str': 116} |
| `memAvailableKb` | {'int': 116} |
| `memTotalKb` | {'int': 116} |
| `otherPssKb` | {'int': 116} |
| `processes` | {'int': 116} |
| `pssFallbackProcesses` | {'int': 116} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
