# sandbox_telemetry_parse — 2026-10-27 03:58:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=308316 lines=685
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 680 |
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
| `chromeBrowserPssKb` | {'int': 680} |
| `chromeGpuPssKb` | {'int': 680} |
| `chromeOtherPssKb` | {'int': 680} |
| `chromeProcesses` | {'int': 680} |
| `chromeProfiles` | {'int': 680} |
| `chromeRendererMaxPssKb` | {'int': 680} |
| `chromeRendererPssKb` | {'int': 680} |
| `chromeRenderers` | {'int': 680} |
| `chromeTabs` | {'int': 680} |
| `chromeTabsProbedProfiles` | {'int': 680} |
| `chromeUtilityPssKb` | {'int': 680} |
| `desktopPssKb` | {'int': 680} |
| `hostPssKb` | {'int': 680} |
| `kind` | {'str': 680} |
| `memAvailableKb` | {'int': 680} |
| `memTotalKb` | {'int': 680} |
| `otherPssKb` | {'int': 680} |
| `processes` | {'int': 680} |
| `pssFallbackProcesses` | {'int': 680} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
