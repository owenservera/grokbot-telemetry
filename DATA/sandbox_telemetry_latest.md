# sandbox_telemetry_parse — 2026-10-26 20:24:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=122238 lines=274
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 269 |
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
| `chromeBrowserPssKb` | {'int': 269} |
| `chromeGpuPssKb` | {'int': 269} |
| `chromeOtherPssKb` | {'int': 269} |
| `chromeProcesses` | {'int': 269} |
| `chromeProfiles` | {'int': 269} |
| `chromeRendererMaxPssKb` | {'int': 269} |
| `chromeRendererPssKb` | {'int': 269} |
| `chromeRenderers` | {'int': 269} |
| `chromeTabs` | {'int': 269} |
| `chromeTabsProbedProfiles` | {'int': 269} |
| `chromeUtilityPssKb` | {'int': 269} |
| `desktopPssKb` | {'int': 269} |
| `hostPssKb` | {'int': 269} |
| `kind` | {'str': 269} |
| `memAvailableKb` | {'int': 269} |
| `memTotalKb` | {'int': 269} |
| `otherPssKb` | {'int': 269} |
| `processes` | {'int': 269} |
| `pssFallbackProcesses` | {'int': 269} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
