# sandbox_telemetry_parse — 2026-10-14 19:31:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=450110 lines=1000
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 995 |
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
| `chromeBrowserPssKb` | {'int': 995} |
| `chromeGpuPssKb` | {'int': 995} |
| `chromeOtherPssKb` | {'int': 995} |
| `chromeProcesses` | {'int': 995} |
| `chromeProfiles` | {'int': 995} |
| `chromeRendererMaxPssKb` | {'int': 995} |
| `chromeRendererPssKb` | {'int': 995} |
| `chromeRenderers` | {'int': 995} |
| `chromeTabs` | {'int': 995} |
| `chromeTabsProbedProfiles` | {'int': 995} |
| `chromeUtilityPssKb` | {'int': 995} |
| `desktopPssKb` | {'int': 995} |
| `hostPssKb` | {'int': 995} |
| `kind` | {'str': 995} |
| `memAvailableKb` | {'int': 995} |
| `memTotalKb` | {'int': 995} |
| `otherPssKb` | {'int': 995} |
| `processes` | {'int': 995} |
| `pssFallbackProcesses` | {'int': 995} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
