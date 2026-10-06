# sandbox_telemetry_parse — 2026-10-06 03:48:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=133802 lines=298
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 293 |
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
| `chromeBrowserPssKb` | {'int': 293} |
| `chromeGpuPssKb` | {'int': 293} |
| `chromeOtherPssKb` | {'int': 293} |
| `chromeProcesses` | {'int': 293} |
| `chromeProfiles` | {'int': 293} |
| `chromeRendererMaxPssKb` | {'int': 293} |
| `chromeRendererPssKb` | {'int': 293} |
| `chromeRenderers` | {'int': 293} |
| `chromeTabs` | {'int': 293} |
| `chromeTabsProbedProfiles` | {'int': 293} |
| `chromeUtilityPssKb` | {'int': 293} |
| `desktopPssKb` | {'int': 293} |
| `hostPssKb` | {'int': 293} |
| `kind` | {'str': 293} |
| `memAvailableKb` | {'int': 293} |
| `memTotalKb` | {'int': 293} |
| `otherPssKb` | {'int': 293} |
| `processes` | {'int': 293} |
| `pssFallbackProcesses` | {'int': 293} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
