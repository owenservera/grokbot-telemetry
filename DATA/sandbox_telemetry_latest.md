# sandbox_telemetry_parse — 2026-10-07 00:09:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=686021 lines=1509
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1504 |
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
| `chromeBrowserPssKb` | {'int': 1504} |
| `chromeGpuPssKb` | {'int': 1504} |
| `chromeOtherPssKb` | {'int': 1504} |
| `chromeProcesses` | {'int': 1504} |
| `chromeProfiles` | {'int': 1504} |
| `chromeRendererMaxPssKb` | {'int': 1504} |
| `chromeRendererPssKb` | {'int': 1504} |
| `chromeRenderers` | {'int': 1504} |
| `chromeTabs` | {'int': 1504} |
| `chromeTabsProbedProfiles` | {'int': 1504} |
| `chromeUtilityPssKb` | {'int': 1504} |
| `desktopPssKb` | {'int': 1504} |
| `hostPssKb` | {'int': 1504} |
| `kind` | {'str': 1504} |
| `memAvailableKb` | {'int': 1504} |
| `memTotalKb` | {'int': 1504} |
| `otherPssKb` | {'int': 1504} |
| `processes` | {'int': 1504} |
| `pssFallbackProcesses` | {'int': 1504} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
