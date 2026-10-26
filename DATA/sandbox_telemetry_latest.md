# sandbox_telemetry_parse — 2026-10-26 23:59:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=214197 lines=477
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 472 |
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
| `chromeBrowserPssKb` | {'int': 472} |
| `chromeGpuPssKb` | {'int': 472} |
| `chromeOtherPssKb` | {'int': 472} |
| `chromeProcesses` | {'int': 472} |
| `chromeProfiles` | {'int': 472} |
| `chromeRendererMaxPssKb` | {'int': 472} |
| `chromeRendererPssKb` | {'int': 472} |
| `chromeRenderers` | {'int': 472} |
| `chromeTabs` | {'int': 472} |
| `chromeTabsProbedProfiles` | {'int': 472} |
| `chromeUtilityPssKb` | {'int': 472} |
| `desktopPssKb` | {'int': 472} |
| `hostPssKb` | {'int': 472} |
| `kind` | {'str': 472} |
| `memAvailableKb` | {'int': 472} |
| `memTotalKb` | {'int': 472} |
| `otherPssKb` | {'int': 472} |
| `processes` | {'int': 472} |
| `pssFallbackProcesses` | {'int': 472} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
