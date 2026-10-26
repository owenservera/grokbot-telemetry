# sandbox_telemetry_parse — 2026-10-26 23:48:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=209214 lines=466
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 461 |
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
| `chromeBrowserPssKb` | {'int': 461} |
| `chromeGpuPssKb` | {'int': 461} |
| `chromeOtherPssKb` | {'int': 461} |
| `chromeProcesses` | {'int': 461} |
| `chromeProfiles` | {'int': 461} |
| `chromeRendererMaxPssKb` | {'int': 461} |
| `chromeRendererPssKb` | {'int': 461} |
| `chromeRenderers` | {'int': 461} |
| `chromeTabs` | {'int': 461} |
| `chromeTabsProbedProfiles` | {'int': 461} |
| `chromeUtilityPssKb` | {'int': 461} |
| `desktopPssKb` | {'int': 461} |
| `hostPssKb` | {'int': 461} |
| `kind` | {'str': 461} |
| `memAvailableKb` | {'int': 461} |
| `memTotalKb` | {'int': 461} |
| `otherPssKb` | {'int': 461} |
| `processes` | {'int': 461} |
| `pssFallbackProcesses` | {'int': 461} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
