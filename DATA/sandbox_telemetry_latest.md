# sandbox_telemetry_parse — 2026-10-13 08:00:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=933767 lines=2293
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1912 |
| `chrome_profile_sample` | 373 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1912} |
| `chromeGpuPssKb` | {'int': 1912} |
| `chromeOtherPssKb` | {'int': 1912} |
| `chromeProcesses` | {'int': 1912} |
| `chromeProfiles` | {'int': 1912} |
| `chromeRendererMaxPssKb` | {'int': 1912} |
| `chromeRendererPssKb` | {'int': 1912} |
| `chromeRenderers` | {'int': 1912} |
| `chromeTabs` | {'int': 1912} |
| `chromeTabsProbedProfiles` | {'int': 1912} |
| `chromeUtilityPssKb` | {'int': 1912} |
| `desktopPssKb` | {'int': 1912} |
| `hostPssKb` | {'int': 1912} |
| `kind` | {'str': 1912} |
| `memAvailableKb` | {'int': 1912} |
| `memTotalKb` | {'int': 1912} |
| `otherPssKb` | {'int': 1912} |
| `processes` | {'int': 1912} |
| `pssFallbackProcesses` | {'int': 1912} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 372} |
| `display` | {'int': 373} |
| `kind` | {'str': 373} |
| `processes` | {'int': 373} |
| `pssKb` | {'int': 373} |
| `rendererMaxPssKb` | {'int': 373} |
| `renderers` | {'int': 373} |
| `tabs` | {'int': 373} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
