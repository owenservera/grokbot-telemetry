# sandbox_telemetry_parse — 2026-10-16 17:39:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=679322 lines=2539
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1680 |
| `memory_sample` | 850 |
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
| `chromeBrowserPssKb` | {'int': 850} |
| `chromeGpuPssKb` | {'int': 850} |
| `chromeOtherPssKb` | {'int': 850} |
| `chromeProcesses` | {'int': 850} |
| `chromeProfiles` | {'int': 850} |
| `chromeRendererMaxPssKb` | {'int': 850} |
| `chromeRendererPssKb` | {'int': 850} |
| `chromeRenderers` | {'int': 850} |
| `chromeTabs` | {'int': 850} |
| `chromeTabsProbedProfiles` | {'int': 850} |
| `chromeUtilityPssKb` | {'int': 850} |
| `desktopPssKb` | {'int': 850} |
| `hostPssKb` | {'int': 850} |
| `kind` | {'str': 850} |
| `memAvailableKb` | {'int': 850} |
| `memTotalKb` | {'int': 850} |
| `otherPssKb` | {'int': 850} |
| `processes` | {'int': 850} |
| `pssFallbackProcesses` | {'int': 850} |

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
| `cpuMillicores` | {'int': 1677} |
| `display` | {'int': 1680} |
| `kind` | {'str': 1680} |
| `processes` | {'int': 1680} |
| `pssKb` | {'int': 1680} |
| `rendererMaxPssKb` | {'int': 1680} |
| `renderers` | {'int': 1680} |
| `tabs` | {'int': 1679} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
