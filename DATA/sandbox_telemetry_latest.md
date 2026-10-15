# sandbox_telemetry_parse — 2026-10-15 14:27:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=902110 lines=2000
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1995 |
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
| `chromeBrowserPssKb` | {'int': 1995} |
| `chromeGpuPssKb` | {'int': 1995} |
| `chromeOtherPssKb` | {'int': 1995} |
| `chromeProcesses` | {'int': 1995} |
| `chromeProfiles` | {'int': 1995} |
| `chromeRendererMaxPssKb` | {'int': 1995} |
| `chromeRendererPssKb` | {'int': 1995} |
| `chromeRenderers` | {'int': 1995} |
| `chromeTabs` | {'int': 1995} |
| `chromeTabsProbedProfiles` | {'int': 1995} |
| `chromeUtilityPssKb` | {'int': 1995} |
| `desktopPssKb` | {'int': 1995} |
| `hostPssKb` | {'int': 1995} |
| `kind` | {'str': 1995} |
| `memAvailableKb` | {'int': 1995} |
| `memTotalKb` | {'int': 1995} |
| `otherPssKb` | {'int': 1995} |
| `processes` | {'int': 1995} |
| `pssFallbackProcesses` | {'int': 1995} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
