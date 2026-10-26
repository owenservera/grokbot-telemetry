# sandbox_telemetry_parse — 2026-10-27 00:11:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=218274 lines=486
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 481 |
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
| `chromeBrowserPssKb` | {'int': 481} |
| `chromeGpuPssKb` | {'int': 481} |
| `chromeOtherPssKb` | {'int': 481} |
| `chromeProcesses` | {'int': 481} |
| `chromeProfiles` | {'int': 481} |
| `chromeRendererMaxPssKb` | {'int': 481} |
| `chromeRendererPssKb` | {'int': 481} |
| `chromeRenderers` | {'int': 481} |
| `chromeTabs` | {'int': 481} |
| `chromeTabsProbedProfiles` | {'int': 481} |
| `chromeUtilityPssKb` | {'int': 481} |
| `desktopPssKb` | {'int': 481} |
| `hostPssKb` | {'int': 481} |
| `kind` | {'str': 481} |
| `memAvailableKb` | {'int': 481} |
| `memTotalKb` | {'int': 481} |
| `otherPssKb` | {'int': 481} |
| `processes` | {'int': 481} |
| `pssFallbackProcesses` | {'int': 481} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
