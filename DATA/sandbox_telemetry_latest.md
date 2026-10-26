# sandbox_telemetry_parse — 2026-10-26 23:43:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=206949 lines=461
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 456 |
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
| `chromeBrowserPssKb` | {'int': 456} |
| `chromeGpuPssKb` | {'int': 456} |
| `chromeOtherPssKb` | {'int': 456} |
| `chromeProcesses` | {'int': 456} |
| `chromeProfiles` | {'int': 456} |
| `chromeRendererMaxPssKb` | {'int': 456} |
| `chromeRendererPssKb` | {'int': 456} |
| `chromeRenderers` | {'int': 456} |
| `chromeTabs` | {'int': 456} |
| `chromeTabsProbedProfiles` | {'int': 456} |
| `chromeUtilityPssKb` | {'int': 456} |
| `desktopPssKb` | {'int': 456} |
| `hostPssKb` | {'int': 456} |
| `kind` | {'str': 456} |
| `memAvailableKb` | {'int': 456} |
| `memTotalKb` | {'int': 456} |
| `otherPssKb` | {'int': 456} |
| `processes` | {'int': 456} |
| `pssFallbackProcesses` | {'int': 456} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
