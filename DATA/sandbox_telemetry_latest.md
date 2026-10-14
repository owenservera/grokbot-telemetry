# sandbox_telemetry_parse — 2026-10-14 16:17:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=375530 lines=835
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 830 |
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
| `chromeBrowserPssKb` | {'int': 830} |
| `chromeGpuPssKb` | {'int': 830} |
| `chromeOtherPssKb` | {'int': 830} |
| `chromeProcesses` | {'int': 830} |
| `chromeProfiles` | {'int': 830} |
| `chromeRendererMaxPssKb` | {'int': 830} |
| `chromeRendererPssKb` | {'int': 830} |
| `chromeRenderers` | {'int': 830} |
| `chromeTabs` | {'int': 830} |
| `chromeTabsProbedProfiles` | {'int': 830} |
| `chromeUtilityPssKb` | {'int': 830} |
| `desktopPssKb` | {'int': 830} |
| `hostPssKb` | {'int': 830} |
| `kind` | {'str': 830} |
| `memAvailableKb` | {'int': 830} |
| `memTotalKb` | {'int': 830} |
| `otherPssKb` | {'int': 830} |
| `processes` | {'int': 830} |
| `pssFallbackProcesses` | {'int': 830} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
