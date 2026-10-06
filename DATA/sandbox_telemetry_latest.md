# sandbox_telemetry_parse — 2026-10-06 12:47:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=377762 lines=833
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 828 |
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
| `chromeBrowserPssKb` | {'int': 828} |
| `chromeGpuPssKb` | {'int': 828} |
| `chromeOtherPssKb` | {'int': 828} |
| `chromeProcesses` | {'int': 828} |
| `chromeProfiles` | {'int': 828} |
| `chromeRendererMaxPssKb` | {'int': 828} |
| `chromeRendererPssKb` | {'int': 828} |
| `chromeRenderers` | {'int': 828} |
| `chromeTabs` | {'int': 828} |
| `chromeTabsProbedProfiles` | {'int': 828} |
| `chromeUtilityPssKb` | {'int': 828} |
| `desktopPssKb` | {'int': 828} |
| `hostPssKb` | {'int': 828} |
| `kind` | {'str': 828} |
| `memAvailableKb` | {'int': 828} |
| `memTotalKb` | {'int': 828} |
| `otherPssKb` | {'int': 828} |
| `processes` | {'int': 828} |
| `pssFallbackProcesses` | {'int': 828} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
