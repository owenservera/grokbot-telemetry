# sandbox_telemetry_parse — 2026-10-06 23:54:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=678722 lines=1493
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1488 |
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
| `chromeBrowserPssKb` | {'int': 1488} |
| `chromeGpuPssKb` | {'int': 1488} |
| `chromeOtherPssKb` | {'int': 1488} |
| `chromeProcesses` | {'int': 1488} |
| `chromeProfiles` | {'int': 1488} |
| `chromeRendererMaxPssKb` | {'int': 1488} |
| `chromeRendererPssKb` | {'int': 1488} |
| `chromeRenderers` | {'int': 1488} |
| `chromeTabs` | {'int': 1488} |
| `chromeTabsProbedProfiles` | {'int': 1488} |
| `chromeUtilityPssKb` | {'int': 1488} |
| `desktopPssKb` | {'int': 1488} |
| `hostPssKb` | {'int': 1488} |
| `kind` | {'str': 1488} |
| `memAvailableKb` | {'int': 1488} |
| `memTotalKb` | {'int': 1488} |
| `otherPssKb` | {'int': 1488} |
| `processes` | {'int': 1488} |
| `pssFallbackProcesses` | {'int': 1488} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
