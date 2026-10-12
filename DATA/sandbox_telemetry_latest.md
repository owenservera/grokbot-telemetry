# sandbox_telemetry_parse — 2026-10-12 20:11:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=658500 lines=1461
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1456 |
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
| `chromeBrowserPssKb` | {'int': 1456} |
| `chromeGpuPssKb` | {'int': 1456} |
| `chromeOtherPssKb` | {'int': 1456} |
| `chromeProcesses` | {'int': 1456} |
| `chromeProfiles` | {'int': 1456} |
| `chromeRendererMaxPssKb` | {'int': 1456} |
| `chromeRendererPssKb` | {'int': 1456} |
| `chromeRenderers` | {'int': 1456} |
| `chromeTabs` | {'int': 1456} |
| `chromeTabsProbedProfiles` | {'int': 1456} |
| `chromeUtilityPssKb` | {'int': 1456} |
| `desktopPssKb` | {'int': 1456} |
| `hostPssKb` | {'int': 1456} |
| `kind` | {'str': 1456} |
| `memAvailableKb` | {'int': 1456} |
| `memTotalKb` | {'int': 1456} |
| `otherPssKb` | {'int': 1456} |
| `processes` | {'int': 1456} |
| `pssFallbackProcesses` | {'int': 1456} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
