# sandbox_telemetry_parse — 2026-10-15 17:42:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=977142 lines=2166
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2161 |
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
| `chromeBrowserPssKb` | {'int': 2161} |
| `chromeGpuPssKb` | {'int': 2161} |
| `chromeOtherPssKb` | {'int': 2161} |
| `chromeProcesses` | {'int': 2161} |
| `chromeProfiles` | {'int': 2161} |
| `chromeRendererMaxPssKb` | {'int': 2161} |
| `chromeRendererPssKb` | {'int': 2161} |
| `chromeRenderers` | {'int': 2161} |
| `chromeTabs` | {'int': 2161} |
| `chromeTabsProbedProfiles` | {'int': 2161} |
| `chromeUtilityPssKb` | {'int': 2161} |
| `desktopPssKb` | {'int': 2161} |
| `hostPssKb` | {'int': 2161} |
| `kind` | {'str': 2161} |
| `memAvailableKb` | {'int': 2161} |
| `memTotalKb` | {'int': 2161} |
| `otherPssKb` | {'int': 2161} |
| `processes` | {'int': 2161} |
| `pssFallbackProcesses` | {'int': 2161} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
