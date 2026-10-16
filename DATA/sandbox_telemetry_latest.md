# sandbox_telemetry_parse — 2026-10-16 11:24:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=399230 lines=1492
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 982 |
| `memory_sample` | 501 |
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
| `chromeBrowserPssKb` | {'int': 501} |
| `chromeGpuPssKb` | {'int': 501} |
| `chromeOtherPssKb` | {'int': 501} |
| `chromeProcesses` | {'int': 501} |
| `chromeProfiles` | {'int': 501} |
| `chromeRendererMaxPssKb` | {'int': 501} |
| `chromeRendererPssKb` | {'int': 501} |
| `chromeRenderers` | {'int': 501} |
| `chromeTabs` | {'int': 501} |
| `chromeTabsProbedProfiles` | {'int': 501} |
| `chromeUtilityPssKb` | {'int': 501} |
| `desktopPssKb` | {'int': 501} |
| `hostPssKb` | {'int': 501} |
| `kind` | {'str': 501} |
| `memAvailableKb` | {'int': 501} |
| `memTotalKb` | {'int': 501} |
| `otherPssKb` | {'int': 501} |
| `processes` | {'int': 501} |
| `pssFallbackProcesses` | {'int': 501} |

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
| `cpuMillicores` | {'int': 979} |
| `display` | {'int': 982} |
| `kind` | {'str': 982} |
| `processes` | {'int': 982} |
| `pssKb` | {'int': 982} |
| `rendererMaxPssKb` | {'int': 982} |
| `renderers` | {'int': 982} |
| `tabs` | {'int': 981} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
