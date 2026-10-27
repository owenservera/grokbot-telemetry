# sandbox_telemetry_parse — 2026-10-27 09:01:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=429904 lines=954
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 949 |
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
| `chromeBrowserPssKb` | {'int': 949} |
| `chromeGpuPssKb` | {'int': 949} |
| `chromeOtherPssKb` | {'int': 949} |
| `chromeProcesses` | {'int': 949} |
| `chromeProfiles` | {'int': 949} |
| `chromeRendererMaxPssKb` | {'int': 949} |
| `chromeRendererPssKb` | {'int': 949} |
| `chromeRenderers` | {'int': 949} |
| `chromeTabs` | {'int': 949} |
| `chromeTabsProbedProfiles` | {'int': 949} |
| `chromeUtilityPssKb` | {'int': 949} |
| `desktopPssKb` | {'int': 949} |
| `hostPssKb` | {'int': 949} |
| `kind` | {'str': 949} |
| `memAvailableKb` | {'int': 949} |
| `memTotalKb` | {'int': 949} |
| `otherPssKb` | {'int': 949} |
| `processes` | {'int': 949} |
| `pssFallbackProcesses` | {'int': 949} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
