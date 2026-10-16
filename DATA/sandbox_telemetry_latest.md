# sandbox_telemetry_parse — 2026-10-16 05:44:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=151284 lines=565
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 364 |
| `memory_sample` | 192 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 192} |
| `chromeGpuPssKb` | {'int': 192} |
| `chromeOtherPssKb` | {'int': 192} |
| `chromeProcesses` | {'int': 192} |
| `chromeProfiles` | {'int': 192} |
| `chromeRendererMaxPssKb` | {'int': 192} |
| `chromeRendererPssKb` | {'int': 192} |
| `chromeRenderers` | {'int': 192} |
| `chromeTabs` | {'int': 192} |
| `chromeTabsProbedProfiles` | {'int': 192} |
| `chromeUtilityPssKb` | {'int': 192} |
| `desktopPssKb` | {'int': 192} |
| `hostPssKb` | {'int': 192} |
| `kind` | {'str': 192} |
| `memAvailableKb` | {'int': 192} |
| `memTotalKb` | {'int': 192} |
| `otherPssKb` | {'int': 192} |
| `processes` | {'int': 192} |
| `pssFallbackProcesses` | {'int': 192} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 361} |
| `display` | {'int': 364} |
| `kind` | {'str': 364} |
| `processes` | {'int': 364} |
| `pssKb` | {'int': 364} |
| `rendererMaxPssKb` | {'int': 364} |
| `renderers` | {'int': 364} |
| `tabs` | {'int': 363} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
