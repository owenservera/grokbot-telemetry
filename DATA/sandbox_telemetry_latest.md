# sandbox_telemetry_parse — 2026-10-27 02:30:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=271252 lines=603
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 598 |
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
| `chromeBrowserPssKb` | {'int': 598} |
| `chromeGpuPssKb` | {'int': 598} |
| `chromeOtherPssKb` | {'int': 598} |
| `chromeProcesses` | {'int': 598} |
| `chromeProfiles` | {'int': 598} |
| `chromeRendererMaxPssKb` | {'int': 598} |
| `chromeRendererPssKb` | {'int': 598} |
| `chromeRenderers` | {'int': 598} |
| `chromeTabs` | {'int': 598} |
| `chromeTabsProbedProfiles` | {'int': 598} |
| `chromeUtilityPssKb` | {'int': 598} |
| `desktopPssKb` | {'int': 598} |
| `hostPssKb` | {'int': 598} |
| `kind` | {'str': 598} |
| `memAvailableKb` | {'int': 598} |
| `memTotalKb` | {'int': 598} |
| `otherPssKb` | {'int': 598} |
| `processes` | {'int': 598} |
| `pssFallbackProcesses` | {'int': 598} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
