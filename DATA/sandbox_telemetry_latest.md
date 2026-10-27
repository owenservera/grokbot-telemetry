# sandbox_telemetry_parse — 2026-10-27 11:27:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=490564 lines=1088
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1083 |
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
| `chromeBrowserPssKb` | {'int': 1083} |
| `chromeGpuPssKb` | {'int': 1083} |
| `chromeOtherPssKb` | {'int': 1083} |
| `chromeProcesses` | {'int': 1083} |
| `chromeProfiles` | {'int': 1083} |
| `chromeRendererMaxPssKb` | {'int': 1083} |
| `chromeRendererPssKb` | {'int': 1083} |
| `chromeRenderers` | {'int': 1083} |
| `chromeTabs` | {'int': 1083} |
| `chromeTabsProbedProfiles` | {'int': 1083} |
| `chromeUtilityPssKb` | {'int': 1083} |
| `desktopPssKb` | {'int': 1083} |
| `hostPssKb` | {'int': 1083} |
| `kind` | {'str': 1083} |
| `memAvailableKb` | {'int': 1083} |
| `memTotalKb` | {'int': 1083} |
| `otherPssKb` | {'int': 1083} |
| `processes` | {'int': 1083} |
| `pssFallbackProcesses` | {'int': 1083} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
