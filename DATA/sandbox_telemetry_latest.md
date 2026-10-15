# sandbox_telemetry_parse — 2026-10-15 21:26:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1063022 lines=2356
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2351 |
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
| `chromeBrowserPssKb` | {'int': 2351} |
| `chromeGpuPssKb` | {'int': 2351} |
| `chromeOtherPssKb` | {'int': 2351} |
| `chromeProcesses` | {'int': 2351} |
| `chromeProfiles` | {'int': 2351} |
| `chromeRendererMaxPssKb` | {'int': 2351} |
| `chromeRendererPssKb` | {'int': 2351} |
| `chromeRenderers` | {'int': 2351} |
| `chromeTabs` | {'int': 2351} |
| `chromeTabsProbedProfiles` | {'int': 2351} |
| `chromeUtilityPssKb` | {'int': 2351} |
| `desktopPssKb` | {'int': 2351} |
| `hostPssKb` | {'int': 2351} |
| `kind` | {'str': 2351} |
| `memAvailableKb` | {'int': 2351} |
| `memTotalKb` | {'int': 2351} |
| `otherPssKb` | {'int': 2351} |
| `processes` | {'int': 2351} |
| `pssFallbackProcesses` | {'int': 2351} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
