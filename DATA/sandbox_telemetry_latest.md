# sandbox_telemetry_parse — 2026-10-14 07:59:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=176650 lines=395
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 390 |
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
| `chromeBrowserPssKb` | {'int': 390} |
| `chromeGpuPssKb` | {'int': 390} |
| `chromeOtherPssKb` | {'int': 390} |
| `chromeProcesses` | {'int': 390} |
| `chromeProfiles` | {'int': 390} |
| `chromeRendererMaxPssKb` | {'int': 390} |
| `chromeRendererPssKb` | {'int': 390} |
| `chromeRenderers` | {'int': 390} |
| `chromeTabs` | {'int': 390} |
| `chromeTabsProbedProfiles` | {'int': 390} |
| `chromeUtilityPssKb` | {'int': 390} |
| `desktopPssKb` | {'int': 390} |
| `hostPssKb` | {'int': 390} |
| `kind` | {'str': 390} |
| `memAvailableKb` | {'int': 390} |
| `memTotalKb` | {'int': 390} |
| `otherPssKb` | {'int': 390} |
| `processes` | {'int': 390} |
| `pssFallbackProcesses` | {'int': 390} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
