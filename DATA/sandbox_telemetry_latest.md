# sandbox_telemetry_parse — 2026-10-15 09:46:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=794534 lines=1762
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1757 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1757} |
| `chromeGpuPssKb` | {'int': 1757} |
| `chromeOtherPssKb` | {'int': 1757} |
| `chromeProcesses` | {'int': 1757} |
| `chromeProfiles` | {'int': 1757} |
| `chromeRendererMaxPssKb` | {'int': 1757} |
| `chromeRendererPssKb` | {'int': 1757} |
| `chromeRenderers` | {'int': 1757} |
| `chromeTabs` | {'int': 1757} |
| `chromeTabsProbedProfiles` | {'int': 1757} |
| `chromeUtilityPssKb` | {'int': 1757} |
| `desktopPssKb` | {'int': 1757} |
| `hostPssKb` | {'int': 1757} |
| `kind` | {'str': 1757} |
| `memAvailableKb` | {'int': 1757} |
| `memTotalKb` | {'int': 1757} |
| `otherPssKb` | {'int': 1757} |
| `processes` | {'int': 1757} |
| `pssFallbackProcesses` | {'int': 1757} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
