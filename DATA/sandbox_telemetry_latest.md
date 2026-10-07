# sandbox_telemetry_parse — 2026-10-07 11:48:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1000381 lines=2198
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2193 |
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
| `chromeBrowserPssKb` | {'int': 2193} |
| `chromeGpuPssKb` | {'int': 2193} |
| `chromeOtherPssKb` | {'int': 2193} |
| `chromeProcesses` | {'int': 2193} |
| `chromeProfiles` | {'int': 2193} |
| `chromeRendererMaxPssKb` | {'int': 2193} |
| `chromeRendererPssKb` | {'int': 2193} |
| `chromeRenderers` | {'int': 2193} |
| `chromeTabs` | {'int': 2193} |
| `chromeTabsProbedProfiles` | {'int': 2193} |
| `chromeUtilityPssKb` | {'int': 2193} |
| `desktopPssKb` | {'int': 2193} |
| `hostPssKb` | {'int': 2193} |
| `kind` | {'str': 2193} |
| `memAvailableKb` | {'int': 2193} |
| `memTotalKb` | {'int': 2193} |
| `otherPssKb` | {'int': 2193} |
| `processes` | {'int': 2193} |
| `pssFallbackProcesses` | {'int': 2193} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
