# sandbox_telemetry_parse — 2026-10-14 12:11:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=278350 lines=620
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 615 |
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
| `chromeBrowserPssKb` | {'int': 615} |
| `chromeGpuPssKb` | {'int': 615} |
| `chromeOtherPssKb` | {'int': 615} |
| `chromeProcesses` | {'int': 615} |
| `chromeProfiles` | {'int': 615} |
| `chromeRendererMaxPssKb` | {'int': 615} |
| `chromeRendererPssKb` | {'int': 615} |
| `chromeRenderers` | {'int': 615} |
| `chromeTabs` | {'int': 615} |
| `chromeTabsProbedProfiles` | {'int': 615} |
| `chromeUtilityPssKb` | {'int': 615} |
| `desktopPssKb` | {'int': 615} |
| `hostPssKb` | {'int': 615} |
| `kind` | {'str': 615} |
| `memAvailableKb` | {'int': 615} |
| `memTotalKb` | {'int': 615} |
| `otherPssKb` | {'int': 615} |
| `processes` | {'int': 615} |
| `pssFallbackProcesses` | {'int': 615} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
