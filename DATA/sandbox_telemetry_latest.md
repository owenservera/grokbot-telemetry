# sandbox_telemetry_parse — 2026-10-26 20:57:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=134922 lines=302
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 297 |
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
| `chromeBrowserPssKb` | {'int': 297} |
| `chromeGpuPssKb` | {'int': 297} |
| `chromeOtherPssKb` | {'int': 297} |
| `chromeProcesses` | {'int': 297} |
| `chromeProfiles` | {'int': 297} |
| `chromeRendererMaxPssKb` | {'int': 297} |
| `chromeRendererPssKb` | {'int': 297} |
| `chromeRenderers` | {'int': 297} |
| `chromeTabs` | {'int': 297} |
| `chromeTabsProbedProfiles` | {'int': 297} |
| `chromeUtilityPssKb` | {'int': 297} |
| `desktopPssKb` | {'int': 297} |
| `hostPssKb` | {'int': 297} |
| `kind` | {'str': 297} |
| `memAvailableKb` | {'int': 297} |
| `memTotalKb` | {'int': 297} |
| `otherPssKb` | {'int': 297} |
| `processes` | {'int': 297} |
| `pssFallbackProcesses` | {'int': 297} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
