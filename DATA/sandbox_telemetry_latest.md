# sandbox_telemetry_parse — 2026-10-13 08:19:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=943948 lines=2325
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1928 |
| `chrome_profile_sample` | 389 |
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
| `chromeBrowserPssKb` | {'int': 1928} |
| `chromeGpuPssKb` | {'int': 1928} |
| `chromeOtherPssKb` | {'int': 1928} |
| `chromeProcesses` | {'int': 1928} |
| `chromeProfiles` | {'int': 1928} |
| `chromeRendererMaxPssKb` | {'int': 1928} |
| `chromeRendererPssKb` | {'int': 1928} |
| `chromeRenderers` | {'int': 1928} |
| `chromeTabs` | {'int': 1928} |
| `chromeTabsProbedProfiles` | {'int': 1928} |
| `chromeUtilityPssKb` | {'int': 1928} |
| `desktopPssKb` | {'int': 1928} |
| `hostPssKb` | {'int': 1928} |
| `kind` | {'str': 1928} |
| `memAvailableKb` | {'int': 1928} |
| `memTotalKb` | {'int': 1928} |
| `otherPssKb` | {'int': 1928} |
| `processes` | {'int': 1928} |
| `pssFallbackProcesses` | {'int': 1928} |

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
| `cpuMillicores` | {'int': 388} |
| `display` | {'int': 389} |
| `kind` | {'str': 389} |
| `processes` | {'int': 389} |
| `pssKb` | {'int': 389} |
| `rendererMaxPssKb` | {'int': 389} |
| `renderers` | {'int': 389} |
| `tabs` | {'int': 389} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
