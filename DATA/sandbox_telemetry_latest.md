# sandbox_telemetry_parse — 2026-10-26 21:37:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=153495 lines=343
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 338 |
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
| `chromeBrowserPssKb` | {'int': 338} |
| `chromeGpuPssKb` | {'int': 338} |
| `chromeOtherPssKb` | {'int': 338} |
| `chromeProcesses` | {'int': 338} |
| `chromeProfiles` | {'int': 338} |
| `chromeRendererMaxPssKb` | {'int': 338} |
| `chromeRendererPssKb` | {'int': 338} |
| `chromeRenderers` | {'int': 338} |
| `chromeTabs` | {'int': 338} |
| `chromeTabsProbedProfiles` | {'int': 338} |
| `chromeUtilityPssKb` | {'int': 338} |
| `desktopPssKb` | {'int': 338} |
| `hostPssKb` | {'int': 338} |
| `kind` | {'str': 338} |
| `memAvailableKb` | {'int': 338} |
| `memTotalKb` | {'int': 338} |
| `otherPssKb` | {'int': 338} |
| `processes` | {'int': 338} |
| `pssFallbackProcesses` | {'int': 338} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
